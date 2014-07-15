class AmusementParks

  def initialize(array)
   @arr = array
  end

  def index_by_id
    return_hash = {}
    @arr.each {|hash| return_hash[hash[:id]] = hash}
    return_hash
  end

  def by_country
    @parks_two.group_by{|country|country[:country]}
  end

end


