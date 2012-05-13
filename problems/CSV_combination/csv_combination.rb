require 'csv'

directory_hash = {}

#parse the directory_data.csv file
CSV.foreach("directory_data.csv", :headers => :first_row, :return_headers => false) do |row|

  id = row.field("ID")
  fname = row.field("FirstName").upcase
  lname = row.field("LastName").upcase
  address = row.field("Address")
  city = row.field("City")
  state = row.field("State")
  postal = row.field("Postal")

  directory_hash[id] = { "fname" => fname, "lname" => lname, "address" => address, "city" => city, "state" => state, "postal" => postal, "checks" => [] }  
end

missing_hash = {}

#parse the check_data.csv file
CSV.foreach("check_data.csv", :headers => :first_row, :return_headers => false) do |row|

  id = row.field("ID")
  check_num = row.field("Check Number")
  date = row.field("Date")
  amt = row.field("Amount")

  #in check_data.csv the names are together, split them apart to get first and last names
  name = row.field("Name").split(" ")
  fname = name.at(0).upcase
  lname = name.at(1).upcase

  check_info = { "number" => check_num, "date" => date, "amt" => amt }

  if directory_hash[id].nil?
    #no address info for this person, add them to the missing hash

    if missing_hash[id].nil?
      #initialize this person in the missing hash if not already in it
      missing_hash[id] = { "fname" => fname, "lname" => lname, "checks" => [] }
    else
      #if they're already in the missing hash, then just add the check info to the "checks" array
      missing_hash[id]["checks"] << check_info
    end

  else
    directory_hash[id]["checks"] << check_info #add check to the "checks" array
  end
end

#write the combined address info and check info
CSV.open("combined.csv", "wb") do |csv|
  csv << ["ID", "FirstName", "LastName", "Address", "City", "State", "Postal", "Checks"]
  directory_hash.each do |key, value|
    #construct an array with all the person's data
    arr = []
    arr << key
    arr << value["fname"]
    arr << value["lname"]
    arr << value["address"]
    arr << value["city"]
    arr << value["state"]
    arr << value["postal"]

    value["checks"].each do |check|
      arr << check["number"]
      arr << check["date"]
      arr << check["amt"]
    end

    csv << arr
  end
end

#write the missing people's names
CSV.open("missing.csv", "wb") do |csv|
  csv << ["ID", "FirstName", "LastName"]
  missing_hash.each do |key, value|
    csv << [key, value["fname"], value["lname"] ]
  end
end
