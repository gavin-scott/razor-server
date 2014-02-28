require_relative './util'

Sequel.migration do
  up do
    alter_table :policies do
      add_column            :bootproto, :text
      add_column            :ip, :text
      add_column            :netmask, :text
      add_column            :gateway, :text
    end
  end

  down do
    alter_table :policies do
      drop_column         :bootproto
      drop_column         :ip
      drop_column         :netmask
      drop_column         :gateway
    end
  end
end
