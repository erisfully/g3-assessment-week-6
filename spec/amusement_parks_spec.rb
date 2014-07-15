require 'spec_helper'

describe AmusementParks do
  it "index_by_id" do
  amusement_park = AmusementParks.new([
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
                                      ])
    output = {
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
    }

    expect(amusement_park.index_by_id).to eq(output)
  end
end


