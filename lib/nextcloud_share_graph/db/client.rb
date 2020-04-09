# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

module NextcloudShareGraph
  module DB
    def self.client
      @@client ||= Mysql2::Client.new(
                    host:     NextcloudShareGraph::config.fetch(:db, :host),
                    port:     NextcloudShareGraph::config.fetch(:db, :port),
                    username: NextcloudShareGraph::config.fetch(:db, :user),
                    password: NextcloudShareGraph::config.fetch(:db, :password),
                    database: NextcloudShareGraph::config.fetch(:db, :name)
      ) 
    end
  end
end
