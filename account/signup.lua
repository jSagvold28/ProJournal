print("Name:")
local name = io.read()

print("Email: (we dont send annoying emails)")
local email = io.read()

print("Password:")
local password = io.read()

local function writeToFile()

    print("Would you like to create a ProJournal account")
    print("Type 'yes' to create an account.")

    local input = io.read()

    if input == "yes" then

        local file = io.open("SignUpInformation.txt", "w")

        file:write(name, "\n")
        file:write(email, "\n")
        file:write(password, "\n")
    
        file:close()

        print("Account has been created!")

    else
        print("Error creating account")
    end
end
writeToFile()
