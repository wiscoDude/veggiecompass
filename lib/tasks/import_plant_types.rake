desc "Import Plant Types." 
task :import_plant_types => :environment do
  File.open(File.join(Rails.root, "lib", "tasks", "veggie_types.txt"), "r")
  .each do |line|
    type_name = line.strip
    
    plant_type = PlantType.new(:name => type_name)
    plant_type.save
  end
end