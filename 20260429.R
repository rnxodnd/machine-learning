state <- as.data.frame(state.x77) #데이터 프레임 설정
state <- state[,-c(6,8)] #필요하지 않은 컬럼 삭제
head(state)
reg_state <- lm(Murder ~., data = state)#lm(입력변수 ~., 출력변수 전체시 생략)
coef(reg_state)
#HY0 : w1 = ... = w5 = 0 => reg_state이 쓸모가 없다
#H1 : Not H0 => w1 ~ w5중 적어도 하나느 0이 있다 => 쓸모가 있따
summary(reg_state)
#R-squared 점수(결정계수)
#p-value가 낮을수록 쓸모가 있다
