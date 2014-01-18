class TableFormatterSimple
  def initialize
    @space_num = 1
    @padstr = ' '
  end

  def to_table(data)
    return if data.empty?

    data2hash   = {}
    length_data = {}
    formatted_data = ''

    data.each do |d|
      d.keys.each do |k|
        data2hash[k] ||= [k]
        data2hash[k] << d[k]
      end
    end
    data2hash.keys.each do |k|
      length_data[k] = (data2hash[k].max_by { |f| f.to_s.length }).to_s.length + @space_num * 2
    end

    key_list = data2hash.keys

    cover = ''
    key_list.each do |k|
      cover << '+'
      cover << '-' * length_data[k]
    end
    cover << "+\n"
    formatted_data << cover

    index = ''
    key_list.each do |k|
      index << '|'
      index << @padstr * @space_num
      index << k.to_s.ljust(length_data[k] - @space_num, @padstr)
    end
    index  << "|\n"
    formatted_data << index

    formatted_data << cover

    rows = ''
    data.each do |d|
      row = ''
      key_list.each do |k|
        row << '|'
        row << @padstr * @space_num
        row << d[k].to_s.ljust(length_data[k] - @space_num, @padstr)
      end
      row << "|\n"
      rows << row
    end
    formatted_data << rows
    formatted_data << cover

    formatted_data
  end

end
