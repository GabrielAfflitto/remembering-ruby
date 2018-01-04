class Violations
  attr_reader :violation_id,
              :inspection_id,
              :violation_category,
              :violation_date,
              :violation_date_closed,
              :violation_type,
              :violations
  def initialize(data)
    @violation_id = data[:violation_id]
    @inspection_id = data[:inspection_id]
    @violation_category = data[:violation_category]
    @violation_date = data[:violation_date]
    @violation_date = data[:violation_date_closed]
    @violation_type = data[:violation_type]
  end

  def self.from_csv(data)
    @violations = Violations.new(data)
  end

  def category_sort
  end

end
