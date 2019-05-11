require "yaml"

def load_library (path)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_lib(path).each do |meaning, symbols|
    english, japanese = symbols
      emoticons["get_emoticon"][english] = japanese
      emoticons["get_meaning"][japanese] = meaning 
  end 
  emoticons
end



def get_japanese_emoticon(path, emoticon)
  # code goes here
end

def get_english_meaning(path, emoticon)
  # code goes here
end