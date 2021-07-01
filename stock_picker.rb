def stock_picker(stocks)
    # find the biggest difference between b - a
    # sort through values comparing difference, storing current biggest difference
    buy = 0
    sell = 0
    profit = 0
    stocks.each_with_index do |i, index_i|
        stocks.each_with_index do |j, index_j|
            if (j - i) > profit && (index_j > index_i)
                profit = j - i
                a = index_i
                b = index_j
            end
        end
    end
    p [buy, sell]
end


stock_picker([17,3,6,9,15,16,8,6,1,10])

