
$dictionary = ["he", "hell","hello", "loan","a", "an", "any", "one", "anyone", "net", "the", "her", "there", "here"]

def cap(str)
    cap_str = ""
    chop_str = str.dup
    if $dictionary.include?(str)
         return str.capitalize
    else
         while(!str.empty?)
            substr = chop_str.chop!
            if $dictionary.include?(substr)
                cap_str+= substr.capitalize
                str.sub!(substr, "")
                if($dictionary.include?(str))
                    cap_str+= str.capitalize
                    return cap_str
                else
                    chop_str = str.dup
                end
            end
         end
     end
    cap_str
end

cap("helloanyonethere")

    
    
