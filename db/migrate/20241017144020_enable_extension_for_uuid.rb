class EnableExtensionForUuid < ActiveRecord::Migration[7.2]
  def change
    def change
      enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    end
  end
end
