# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

require "nextcloud_share_graph/version"

require "nextcloud_share_graph/config"

require "tty-config"

module NextcloudShareGraph
  class Error < StandardError; end

  def self.config
    @@config ||= load_config
  end

  def self.load_config
    return @@config if defined?(@@config)

    # TODO define defaults

    @@config = TTY::Config.new
    @@config.filename = 'nextcloud_share_graph.config'
    @@config.append_path(Dir.pwd)

    begin
      @@config.read
    rescue TTY::Config::ReadError
      STDERR.puts "config file could not be read"
      STDERR.puts "writing initial config file"
      @@config.write # rescue from that, too
    end

    if !NextcloudShareGraph::Config.sane?
      STDERR.puts "Config not sane"
      exit 1
    end

    @@config
  end
end
