class AddPlanToTenants < ActiveRecord::Migration[5.2]
  def change
    add_column :tenants, :plan, :string
  end
end
