class PDFKit
  class Source
    
    include Enumerable
    
    def initialize(single_or_array_of_url_file_or_html)
      @source = single_or_array_of_url_file_or_html
    end
    
    def each
      return [@source].each {|i| yield i } unless multiple?
      @source.each {|i| yield i }
    end
        
    def url?
      @source.is_a?(String) && @source.match(/\Ahttp/)
    end
    
    def file?
      @source.kind_of?(File)
    end
    
    def html?
      !(url? || file? || multiple?)
    end
    
    def multiple?
      @source.kind_of?(Array)
    end
    
    def count
      return 1 unless multiple?
      @source.count 
    end
    
    def to_s
      return @source.join(',') if multiple?
      file? ? @source.path : @source
    end
  end
end
