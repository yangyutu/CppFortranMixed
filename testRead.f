subroutine readdata()

    common /data_/ data

    integer i
    double precision data(4)
    open(1, file = 'readtest2.txt')
    do i = 1, 4
        read(1, *) data(i)
    end do
    return
end
