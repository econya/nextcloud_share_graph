# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

require 'forwardable'

module NextcloudShareGraph
  class CheapGraph
    extend Forwardable

    attr_accessor :graph

    def_delegators :@graph, :add_node, :output

    def initialize
      init_graph
    end

    private

    def init_graph
      @graph = GraphViz.new(:G, use: 'fdp')
      @graph['maxiter'] = 1600
      @graph['overlap'] = false
      @graph['splines'] = 'spline'
    end
  end
end
