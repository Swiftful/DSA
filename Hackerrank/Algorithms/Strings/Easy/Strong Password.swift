func minimumNumber(n: Int, password: String) -> Int {
    // Return the minimum number of characters to make the password strong
    var sum = 0
    var (isnum,islc,isuc,iss) = (false,false,false,false)
    let special_characters = "!@#$%^&*()-+"
    
    for i in password{
        if i.isNumber{
            isnum = true
        }
        if i.isLowercase{
            islc = true
        }
        if i.isUppercase{
            isuc = true
        }
        if special_characters.contains(i){
            iss = true
        }
    }
    sum += !isnum ? 1 : 0
    sum += !islc ? 1 : 0
    sum += !isuc ? 1 : 0
    sum += !iss ? 1 : 0
    if password.count < 6 && sum + password.count < 6{
        sum += sum < 6 ? 6 - (password.count + sum) : 0
    }
    return sum
}


//Gpt
func minimumNumber(n: Int, password: String) -> Int {
    let specialCharacters = "!@#$%^&*()-+"
    var requirementsMet = 0
    var (hasNumber, hasLowercase, hasUppercase, hasSpecial) = (0, 0, 0, 0)
    
    for character in password {
        if character.isNumber { hasNumber = 1 }
        else if character.isLowercase { hasLowercase = 1 }
        else if character.isUppercase { hasUppercase = 1 }
        else if specialCharacters.contains(character) { hasSpecial = 1 }
    }
    requirementsMet = hasNumber + hasLowercase + hasUppercase + hasSpecial
    let missingLength = max(0, 6 - n)
    return max(4 - requirementsMet, missingLength)
}