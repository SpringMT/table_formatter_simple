#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/spec_helper'

describe TableFormatterSimple do
  describe :to_table do

    context 'valid all' do
      subject { TableFormatterSimple.new.to_table([{foo: 'aaa', bar: 'bbbb'}, {foo: 'ccc', bar: 'dddd'}]) }
      it do
        should eql(<<"TABLE")
+-----+------+
| foo | bar  |
+-----+------+
| aaa | bbbb |
| ccc | dddd |
+-----+------+
TABLE
      end
    end

    context 'valid partical key' do
      subject { TableFormatterSimple.new.to_table([{foo: 'aaa', bar: 'bbbb'}, {foo: 'ccc', hoge: 'dddd'}]) }
      it do
        should eql(<<"TABLE")
+-----+------+------+
| foo | bar  | hoge |
+-----+------+------+
| aaa | bbbb |      |
| ccc |      | dddd |
+-----+------+------+
TABLE
      end
    end

    context 'valid all' do
      subject { TableFormatterSimple.new.to_table([{foo: 111, bar: 2222}, {foo: 333, bar: 444444444444}]) }
      it do
        should eql(<<"TABLE")
+-----+--------------+
| foo | bar          |
+-----+--------------+
| 111 | 2222         |
| 333 | 444444444444 |
+-----+--------------+
TABLE
      end
    end

  end
end


