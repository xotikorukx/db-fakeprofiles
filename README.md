# db-fakeprofiles
A FiveM standalone tooling resource that other resources can pull (fake) american populace names, date of births, and so on. Includes 100,000 records! Can add more datatypes if needed.

Usage:
```lua
  local owner = exports["db-fakeprofiles"]:getRandomProfile()
--[[
  id = 87654,
  ssn = "123-45-6789",
  firstname = "Patricia",
  lastname = "Walker",
  birthdate = "1/2/1973",
  eyecolor = "blue",
  jobtitle = "Ambulance Driver",
  jobcomapny = "eTransportMS North",
]]

  local bulk = exports["db-fakeprofiles"]:getRandomProfile(5000) --returns a table of the above tables.
```
