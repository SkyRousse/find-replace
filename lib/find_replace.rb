class String
  define_method (:find_replace) do |find, replace|
    self.gsub(find, replace)
  end
end
