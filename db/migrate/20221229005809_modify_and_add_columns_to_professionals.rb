class ModifyAndAddColumnsToProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :email, :string
    add_column :professionals, :field_trip, :boolean
    add_column :professionals, :class_speaker, :boolean
    add_column :professionals, :lunch, :boolean
    add_column :professionals, :job_shadow, :boolean
    add_column :professionals, :career_fair, :boolean
    add_column :professionals, :mentorship, :boolean
    add_column :professionals, :proj_pitch, :boolean
    add_column :professionals, :proj_consult, :boolean
    add_column :professionals, :proj_collab, :boolean
    add_column :professionals, :student_wbl, :boolean
    add_column :professionals, :externship, :boolean
    rename_column :professionals, :description, :occupation
    rename_column :professionals, :industry, :organization
    remove_column :professionals, :proj_avail
    remove_column :professionals, :class_eng
    remove_column :professionals, :teacher_mentor
    remove_column :professionals, :student_exp
  end
end
