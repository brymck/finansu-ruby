class CreateFinansu < ActiveRecord::Migration
  def self.up
    # Portfolios
    create_table :finansu_portfolios do |t|
      t.string :name, :null => false
    end

    # Quotes
    create_table :finansu_quotes do |t|
      t.string :name,    :null => false
      t.string :ticker,  :null => false
      t.string :exchange
    end

    # HABTM entry
    create_table :finansu_portfolios_finansu_quotes, :id => false do |t|
      t.references :finansu_portfolio, :null => false
      t.references :finansu_quote,     :null => false
    end
    add_index :finansu_portfolios_finansu_quotes, [:finansu_portfolio_id, :finansu_quote_id], :unique => true
  end

  def self.down
    drop_table :finansu_quotes
    drop_table :finansu_portfolios
  end
end
