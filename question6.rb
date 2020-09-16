class Driver
  def convertListings2Catalougue(log)
    #shared between classes
    @@FilePath = log 
    @@cars = File.read(log)
    @@cars = @@cars.gsub /^@\n/, ''

    @featuresRegex = /\{.*\}/i #features
    @kmRegex = /(?<=\A|,)\d*km/i #km
    @driveTrainRegex = /\b(?:awd|fwd|rwd)\b/i #drive train
    @typeRegex = /\b(?:sedan|coupe|hatchback|station|suv)\b/i #car type
    @transmissionRegex = /\b(?:auto|manual|steptronic)\b/i #transmission
    @statusRegex = /\b(?:used|new)\b/i #status
    @carmakerRegex = /\b(?:honda|toyota|mercedes|bmw|lexus)\b/i #carMarker
    @trimRegex = /,(\D{2})\W/i #trim
    @fuelEcomRegex = /\d*\.?\dl\/100km/i #fuel economy
    @yearRegex = /,(\d{4})\W/i #year
    @stockRegex = /\b(?!km)\b\d+[a-z0-9]+\d+[0-9az]+(?<!km)\w\b(?<!km)\b/i #stock
    @modelRegex = /\b(?!,).*(?<!,)\b/ #model

    @features = @@cars.scan(@featuresRegex)
    @km = @@cars.scan(@kmRegex)
    @driveTrain = @@cars.scan(@driveTrainRegex)
    @type = @@cars.scan(@typeRegex)
    @transmission = @@cars.scan(@transmissionRegex)
    @status = @@cars.scan(@statusRegex)
    @carMaker = @@cars.scan(@carmakerRegex)
    @trim = @@cars.scan(@trimRegex).flatten
    @fuelEcom = @@cars.scan(@fuelEcomRegex)
    @year = @@cars.scan(@yearRegex).flatten
    @stockNumber = @@cars.scan(@stockRegex)
@missing = @@cars.gsub(Regexp.union((@features + @km + @driveTrain + @type + @transmission + @status + @carMaker + @trim + @fuelEcom + @year + @stockNumber)), '')

 @models = @missing.scan(@modelRegex)
 @manufacturers = @carMaker.map {
        |makers|
      CarEntry.new(makers)
    }

#create obj
    i = 0
    @manufacturers.each do |cars|
      cars.createModel(@models[i], @trim[i], @km[i], @year[i], @type[i], @driveTrain[i], @transmission[i], @stockNumber[i], @status[i], @fuelEcom[i], @features[i])
      i += 1
    end
  end

  def printCar
    @manufacturers.each do |cars|
      cars.print()
    end
  end

  def add2Inventory(input)

    File.open(@@FilePath, 'a+') { |f|
      f.puts input
    }
    @@cars = File.read(@@FilePath)
    @@cars = @@cars.gsub /^@\n/, ''
    @featuresRegex = /\{.*\}/i #features
    @kmRegex = /(?<=\A|,)\d*km/i #km
    @driveTrainRegex = /\b(?:awd|fwd|rwd)\b/i #drive train
    @typeRegex = /\b(?:sedan|coupe|hatchback|station|suv)\b/i #car type
    @transmissionRegex = /\b(?:auto|manual|steptronic)\b/i #transmission
    @statusRegex = /\b(?:used|new)\b/i #status
    @carmakerRegex = /\b(?:honda|toyota|mercedes|bmw|lexus)\b/i #carMarker
    @trimRegex = /,(\D{2})\W/i #trim
    @fuelEcomRegex = /\d*\.?\dl\/100km/i #fuel economy
    @yearRegex = /,(\d{4})\W/i #year
    @stockRegex = /\b(?!km)\b\d+[a-z0-9]+\d+[0-9a-z]+(?<!km)\w\b(?<!km)\b/i #stock
    @modelRegex = /\b(?!,).*(?<!,)\b/ #model
    @features = @@cars.scan(@featuresRegex)
    @km = @@cars.scan(@kmRegex)
    @driveTrain = @@cars.scan(@driveTrainRegex)
    @type = @@cars.scan(@typeRegex)
    @transmission = @@cars.scan(@transmissionRegex)
    @status = @@cars.scan(@statusRegex)
    @carMaker = @@cars.scan(@carmakerRegex)
    @trim = @@cars.scan(@trimRegex).flatten
    @fuelEcom = @@cars.scan(@fuelEcomRegex)
    @year = @@cars.scan(@yearRegex).flatten
    @stockNumber = @@cars.scan(@stockRegex)

@missing = @@cars.gsub(Regexp.union((@features + @km + @driveTrain + @type + @transmission + @status + @carEntry + @trim + @fuelEcom + @year + @stockNumber)), '')

    @models = @missing.scan(@modelRegex)

    #create car_maker objects here
    @manufacturers = @carMaker.map {
        |makers|
      CarEntry.new(makers)
    }

    #creating obj
    i = 0
    @manufacturers.each do |cars| cars.createModel(@models[i], @trim[i], @km[i], @type[i], @year[i], @driveTrain[i], @transmission[i], @stockNumber[i], @status[i], @fuelEcom[i], @features[i])
      i += 1
    end

  end

  #stringify method to output to the file
  def saveCatalogue2File()
    write = File.open('inventory-updated ' + Time.now.to_s + ".txt", 'w')
    @strings = []
    @manufacturers.each do |cars| carInfo = cars.stringify()
      @strings.push(carInfo)
    end
    write.puts @strings.sort
  end
end

showroom = Driver.new
showroom.convertListings2Catalougue("cars.txt")
showroom.printCar()




Classes Car Entry and Subclass Model
#classes CarEntry and subclass Model
class CarEntry
  @@counter = 0
  #Accessors
  attr_accessor :car_maker, :listing, :model, :trim, :km, :year, :type, :driveTrain, :trans, :id, :status, :fuel, :features

  #Mutators
  attr_writer :listing, :model, :trim, :km, :year, :type, :driveTrain, :trans, :id, :status, :fuel, :features

  #Constructor
  def initialize(maker)
    self.car_maker = maker
    @@counter += 1
  end

  #Obj
  def createModel(model, trim, km, year, type, driveTrain, trans, id, status, fuel, features)
    @Model = Model.new(model, trim, km, year, type, driveTrain, trans, id, status, fuel, features)
    self.model = model
    self.trim = trim
    self.km = km
    self.year = year
    self.type = type
    self.driveTrain = driveTrain
    self.trans = trans
    self.id = id
    self.status = status
    self.fuel = fuel
    self.features = features
  end

  #print method
  def print()
    puts self.car_maker + "," 
    + @Model.print().to_s
  end

  #prints obj
  def stringify()
    listing = self.car_maker + "," + @Model.print().to_s
  end
end

#model class
class Model < CarEntry
  
  #Accessors
  attr_accessor :model, :trim, :km, :year, :type, :driveTrain, :trans, :id, :status, :fuel, :features
  #Mutators
  attr_writer :model, :trim, :km, :year, :type, :driveTrain, :trans, :id, :status, :fuel, :features
  #Constructor
  def initialize(model, trim, km, year, type, driveTrain, trans, id, status, fuel, features)
    self.model = model
    self.trim = trim
    self.km = km
    self.year = year
    self.type = type
    self.driveTrain = driveTrain
    self.trans = trans
    self.id = id
    self.status = status
    self.fuel = fuel
    self.features = features
  end


  #print method
  def print()
    self.model + "," + self.trim + "," + self.km + "," + self.year + "," + self.type + "," + self.driveTrain +
        "," + self.trans + "," + self.id + "," + self.status + "," + self.fuel + "," + self.features
  end
  
end
