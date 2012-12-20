module CarrierWave
  module UNOConv
    extend ActiveSupport::Concern
    module ClassMethods
      def uno_convert format
        process uno_convert: format
      end
    end
  
    def uno_convert format
      return if current_path.downcase.ends_with? '.pdf'
      directory = File.dirname( current_path )
      tmpfile   = File.join( directory, "tmpfile" )
  
      File.rename( current_path, tmpfile )
        
      raise CarrierWave::ProcessingError, "UNOconv failed." unless system "unoconv -f #{format} '#{tmpfile}'"
      
      File.rename( File.join(directory, 'tmpfile.pdf'), current_path )
  
      File.delete( tmpfile )
    end
  end
end