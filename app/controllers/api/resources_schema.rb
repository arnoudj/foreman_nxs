module Api
  module ResourcesSchema

    private
    def schema 
      JSON.parse(File.open(Rails.root.join('public','resources.json').to_s).read)
    end

  end
end

