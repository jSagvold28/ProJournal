print("Your email:")
local email = io.read()

print("Your password:")
local password = io.read()

local signupFile = "SignUpInformation.txt"

if io.open(signupFile, "r") then


    local file = io.open(signupFile, "r")
    local data = io.read("*all")
    
    file:close()
    
    local emailLine = string.match(data, "Email:([^\r\n]+)")
    local passwordLine = string.match(data, "Password:([^\r\n]+)")

    if emailLine == email and passwordLine == password then
        print("Login successful!")
    else
        print("Login failed. Incorrect email, or password")
    end
else
    print("No account data found for this email.")
end
