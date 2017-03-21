class GradesReport < Dossier::Report
  def sql
    'SELECT * FROM grades'
  end
end
