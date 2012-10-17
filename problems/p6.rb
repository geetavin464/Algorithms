
$dictionary = ["he", "hell","hello", "loan","a", "an", "any", "one", "anyone", "net", "the", "her", "there", "here"]

def cap(str)
    cap_str = ""                                        # Initialize return value
    chop_str = str.dup                                  # Copy of original string (used in the iterative chopping of last char)
    if $dictionary.include?(str)
         return str.capitalize                          # Checks if the input str is a dictionary word by itself
    else
         while(!str.empty?)
            substr = chop_str.chop!                     # If not keep chopping a character from the end & check if the remaining is a dict. word
            if $dictionary.include?(substr)
                cap_str+= substr.capitalize             # If it is, append it to the return value
                str.sub!(substr, "")                    # Initialize the string to the remaining part
                if($dictionary.include?(str))
                    cap_str+= str.capitalize            # Recheck if the remaining part is a word by itself
                    return cap_str
                else    
                    chop_str = str.dup                  # Iterate until the str is empty
                end
            end
         end
     end
    cap_str
end

cap("helloanyonethere")
cap("hetheone")
cap("hetheany")
cap("heantheone")
    
