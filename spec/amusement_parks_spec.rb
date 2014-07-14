require 'rspec'
require 'amusement_parks'

describe Parks do


  describe "#by_id" do
    it "orders all parks according to id" do
      parks = @parks.by_id

      expect.(parks).to have_hash({
                             546 => {
                               :id=>546,
                               :name=>"Kalahari Resorts",
                               :city=>"Wisconsin Dells",
                               :state=>"Wisconsin",
                               :country=>"United States"
                             },
                             547 => {
                               :id=>547,
                               :name=>"Little Amerricka",
                               :city=>"Marshall",
                               :state=>"Wisconsin",
                               :country=>"United States"
                             }
                           })
    end
  end


  describe "#by_country" do
    it "orders all parks according to country" do
      expect.to have_hash({
                            "Canada" => [
                              {
                                :id=>2,
                                :name=>"Calaway Park",
                                :city=>"Calgary",
                                :state=>"Alberta",
                                :country=>"Canada"
                              }
                            ],
                            "United States" => [
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
                          })
    end

  end
end


