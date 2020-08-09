program lancamento

! definir g como paremetro
! definir v como um read
! definir formula de alcance
! rotina de variação de angulo a cada 5 radianos indo de 5 a 85 graus

real :: g = - 9.81
real :: pi = 3.14
real :: velocity
real :: alcance
integer :: theta = 0
integer :: thetainicial = 5
integer :: thetafinal = 85
integer :: step = 5
real :: radianos

write (*,*) "Programa de calculo de alcance de lancamento de um projetil."
write (*,*)

write (*,*) "Diga a velocidade inicial de lancamento:"
read (*,*) velocity

do theta = thetainicial, thetafinal, step
	radianos = theta * pi / 180
	alcance = (-2 * velocity ** 2) / (g) * cos(radianos) * sin(radianos)
	write (*,*) "O alcance com o lancamento a ", theta 
	write (*,*) "graus foi de: ", alcance
	write (*,*)
end do 


end program Lancamento