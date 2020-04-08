# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

require "nextcloud_share_graph/version"

module NextcloudShareGraph
  class Error < StandardError; end

  def self.load_config
    return @@config if defined?(@@config)

    @@config = TTY::Config.new
    @@config.filename = 'nextcloud_share_graph'
  end
end
