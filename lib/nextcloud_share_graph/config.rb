# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

module NextcloudShareGraph
  module Config
    def self.sane?
      conf = NextcloudShareGraph::config

      keys = %i[host port user password name]
      keys.each do |key|
        if !conf.fetch(:db, key)
          # better, have a bang! method that raises a kinda validationerror
          # with a proper message
          puts key
          return false
        end
      end

      true
    end
  end
end
