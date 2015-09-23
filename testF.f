	subroutine fortfunc(ii, ff)
    common /data_/ data

    integer ii
    real*4 ff
    integer i
    double precision read(4)
    double precision data(4)

    call readdata()

    open(1, file = 'readtest.txt')
    do i = 1, 4
        read(1, *) read(i)
    end do

    write(6, 100) ii, ff
100 format('ii=', i2, ' ff=', f6.3)

    do i = 1, 4
        write(*, *) read(i)
    end do

    do i = 1, 4
        write(*, *) data(i)
    end do


    return
	end
