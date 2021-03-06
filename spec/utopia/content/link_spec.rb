#!/usr/bin/env rspec

# Copyright, 2015, by Samuel G. D. Williams. <http://www.codeotaku.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require 'utopia/content/link'

module Utopia::Content::LinkSpec
	describe Utopia::Content::Link.new(:file, "/foo/bar/baz") do
		it "should be valid file link" do
			expect(subject.name).to be == "baz"
			expect(subject.path).to be == Utopia::Path.create("/foo/bar/baz")
		end
	end
	
	describe Utopia::Content::Link.new(:directory, "/foo/bar/index") do
		it "should be valid directory link" do
			expect(subject.name).to be == "bar"
			expect(subject.path).to be == Utopia::Path.create("/foo/bar/index")
		end
	end
	
	describe Utopia::Content::Link.new(:virtual, "bob") do
		it "should be valid virtual link" do
			expect(subject.name).to be == "bob"
			expect(subject.path).to be == nil
		end
	end
end
