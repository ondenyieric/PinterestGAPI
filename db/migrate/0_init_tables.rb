=begin
Uber API

Move your app forward with the Uber API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

class InitTables < ActiveRecord::Migration
  def change
    create_table "activities".pluralize.to_sym, id: false do |t|
      t.integer :offset
      t.integer :limit
      t.integer :count
      t.string :history

      t.timestamps
    end

    create_table "activity".pluralize.to_sym, id: false do |t|
      t.string :uuid

      t.timestamps
    end

    create_table "error".pluralize.to_sym, id: false do |t|
      t.integer :code
      t.string :message
      t.string :fields

      t.timestamps
    end

    create_table "price_estimate".pluralize.to_sym, id: false do |t|
      t.string :product_id
      t.string :currency_code
      t.string :display_name
      t.string :estimate
      t.float :low_estimate
      t.float :high_estimate
      t.float :surge_multiplier

      t.timestamps
    end

    create_table "product".pluralize.to_sym, id: false do |t|
      t.string :product_id
      t.string :description
      t.string :display_name
      t.string :capacity
      t.string :image

      t.timestamps
    end

    create_table "profile".pluralize.to_sym, id: false do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :picture
      t.string :promo_code

      t.timestamps
    end

  end
end
