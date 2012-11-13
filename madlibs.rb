$output = "Madlibs Poem:\n"

def poem(numLines)
  
   numLines
   
   numLines.times {
    line
   }

end

def line
  
  # puts ":new line:"
  
  random = 1+rand(3)
  
  case random
  when 1
    noun
  when 2
    preposition
  when 3
    pronoun
  else  
    puts "error"
  end

  $output += "\n"
end

def adjective
  # puts ":new adjective:"
  
  adjectiveArray = [ "black", "white", "dark", "light", "bright", "murky", "muddy", "clear" ]
    
  $output += adjectiveArray.sample + " "
      
  random = 1+rand(3)
    
    case random
    when 1
      noun
    when 2
      adjective
    when 3
     # puts "exiting.."  
    else  
      puts "error.."
    end  

end

def noun
  # puts ":new noun:"
  
  nounArray = [ "heart", "sun", "moon", "thunder", "fire", "time", "wind", "sea", "river", "flavor", "wave", "willow", "rain",
    
    "tree", "flower", "field", "meadow", "pasture", "harvest", "water", "father", "mother", "brother", "sister" ]
  
  $output += nounArray.sample + " "
  
  random = 1+rand(3)
      
      case random
      when 1
        verb
      when 2
        preposition
      when 3
        # puts "exiting.."  
      else  
        puts "error.."  
  
      end  
    
end

def pronoun
  # puts ":new pronoun:"
  
  pronounArray = [ "my", "your", "his", "her" ]
      
    $output += pronounArray.sample + " "
  
  random = 1+rand(2)
        
        case random
        when 1
          noun
        when 2
          adjective
        else  
          puts "error.."
        end    
      
end

def verb
  # puts ":new verb:"
  
  verbArray = [ "runs", "walks", "stands", "climbs", "crawls", "flows", "flies", "transcends", "ascends", "descends",
    
    "sinks" ]
      
      $output += verbArray.sample + " "
  
  random = 1+rand(3)
          
          case random
          when 1
            preposition
          when 2
            pronoun
          when 3
            # puts "exiting.."  
          else  
            puts "error.."  
      
          end    
      
end

def preposition
  # puts ":new preposition:"
  
  prepositionArray = [ "above", "across", "against", "along", "among", "around", "before", "behind", "beneath", "beside",
    
    "between", "beyond", "during", "inside", "onto", "outside", "under", "underneath", "upon", "with", "without",
    
    "through" ]
    
    $output += prepositionArray.sample + " "
      
  random = 1+rand(3)
            
            case random
            when 1
              noun
            when 2
              pronoun
            when 3
              adjective
            else  
              puts "error.."
            end  
    
end

class String
  def is_integer?
    self.to_i.to_s == self
  end
end

value = ""
i = 0

while value.is_integer? == false  do
  if i == 0
    puts "How many lines should this poem contain?"
  else
    puts "Invalid entry, please enter a numeric value in integer form."
  end

  value = gets.chomp
  
i += 1  
end

poem(value.to_i)

puts $output




