require "yaml"

def load_library (path)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(path).each do |meaning, symbols|
    english, japanese = symbols
      emoticons["get_emoticon"][english] = japanese
      emoticons["get_meaning"][japanese] = meaning 
  end 
  emoticons
end



def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) 
      #call load_library
  result = emoticons["get_emoticon"][emoticon]
      # english emoticon value = japanese 
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon] 
      #the same above but change get_meaning
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end