class Parks
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


  def by_id
    by_name = @dogs.group_by{|owner|owner[:owner][:name][:first]}
    by_name.map{|key| puts key}
  end
end