class String
  define_method (:find_replace) do |input, replacement|
    self.gsub(input, replacement)
    end
  end
