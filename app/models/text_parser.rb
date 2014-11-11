class TextParser

  def self.counts(string)
    return { chars: 0, spaces: 0 } unless string.present?
    { chars: string.length, spaces: string.split.length - 1 }
  end

end
