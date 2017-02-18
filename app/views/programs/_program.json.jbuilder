json.extract! program, :id, :ProgramName, :ProgramStartDate, :ProgramEndDate, :ProgramDescription, :created_at, :updated_at
json.url program_url(program, format: :json)