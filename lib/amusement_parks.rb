class Parks
  def initialize
  @parks = [
    {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
    }
  ]

    @parks_two = [
      {
        :id=>546,
        :name=>"Kalahari Resorts",
        :city=>"Wisconsin Dells",
        :state=>"Wisconsin",
        :country=>"United States"
      },
      {
        :id=>547,
        :name=>"Little Amerricka",
        :city=>"Marshall",
        :state=>"Wisconsin",
        :country=>"United States"
      },
      {
        :id=>2,
        :name=>"Calaway Park",
        :city=>"Calgary",
        :state=>"Alberta",
        :country=>"Canada"
      }
    ]

  end


  def by_id
    parks_by_id = @parks.group_by{|id|id[:id]}
    parks_by_id.map
  end

  def by_country
    @parks_two.group_by{|country|country[:country]}
  end


end

puts Parks.new.by_id

