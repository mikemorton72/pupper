puppy_names = ['Spot', 'Butters', 'Skip', "Doggo", 'Rick', 'Bill', 'Sam', 'Willy', 'Waylon', 'Lila']
breeds = ['Lab', 'Golden Retriever', 'Poodle', 'Bulldog', 'Doge']
puppy_names.each do |name|
  Puppy.create!(
    name: name,
    age: rand(),
    breed: breeds.sample
  )
end