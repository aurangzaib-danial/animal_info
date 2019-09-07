describe AnimalInfo::Animal do

  it ".new_from_wikipedia returns a object with properties of bat" do
    bat = AnimalInfo::Animal.new_from_wikipedia("bat")
    expect(bat.name).to eq("Bat")
    expect(bat.kingdom).to eq("Animalia")
    expect(bat.phylum).to eq("Chordata")
    expect(bat.klass).to eq("Mammalia")
    expect(bat.order).to eq("Chiroptera")
  end

  it ".new_from_wikipedia returns a object with properties of hippopotamus" do
    hippopotamus = AnimalInfo::Animal.new_from_wikipedia("hippopotamus")
    expect(hippopotamus.name).to eq("Hippopotamus")
    expect(hippopotamus.kingdom).to eq("Animalia")
    expect(hippopotamus.phylum).to eq("Chordata")
    expect(hippopotamus.klass).to eq("Mammalia")
    expect(hippopotamus.order).to eq("Artiodactyla")
  end

  it ".new_from_wikipedia returns a object with properties of lizard" do
    lizard = AnimalInfo::Animal.new_from_wikipedia("lizard")
    expect(lizard.name).to eq("Lizard")
    expect(lizard.kingdom).to eq("Animalia")
    expect(lizard.phylum).to eq("Chordata")
    expect(lizard.klass).to eq("Reptilia")
    expect(lizard.order).to eq("Squamata")
  end

  it ".new_from_wikipedia returns a object with properties of African darter" do
    african_darter = AnimalInfo::Animal.new_from_wikipedia("African Darter")
    expect(african_darter.name).to eq("African darter")
    expect(african_darter.kingdom).to eq("Animalia")
    expect(african_darter.phylum).to eq("Chordata")
    expect(african_darter.klass).to eq("Aves")
    expect(african_darter.order).to eq("Suliformes")
  end

end
