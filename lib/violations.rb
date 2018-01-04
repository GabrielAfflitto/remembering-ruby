class Violations
  def initialize(data)
    @violation_id = data[:violation_id]
    @inspection_id = data[:inspection_id]
    @violation_category = data[:violation_category]
    @violation_date = data[:violation_date]
    @violation_date = data[:violation_date_closed]
    @violation_type = data[:violation_type]
  end

  def self.from_csv(data)
    vio = Violations.new(data)
  end

end
