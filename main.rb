def bubble_sort(numb_arr)
    sorted_arr = numb_arr
    sorted = 1
    while sorted != 0 # <= loops until the array is sorted
        numb_arr = sorted_arr.dup
        sorted = 0
        numb_arr[0...-1].each_with_index do |key, index|
            if numb_arr[index] > numb_arr[index + 1] # <= tests if next value is smaller and swaps the value index
                sorted_arr[index] = numb_arr[index + 1]
                sorted_arr[index + 1] = numb_arr[index]
                sorted += 1
                numb_arr = sorted_arr.dup
            end
        end
    end
    p sorted_arr
end

bubble_sort([4,3,78,2,0,2])