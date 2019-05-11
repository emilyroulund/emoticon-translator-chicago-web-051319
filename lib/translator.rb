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


  emoticons = load_library(path) #call load_library
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(path, emoticon)
  # code goes here
end