//package top.javahai.subtlechat.config;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.messaging.simp.SimpMessagingTemplate;
//import org.springframework.security.authentication.*;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.AuthenticationEntryPoint;
//import org.springframework.security.web.authentication.AuthenticationFailureHandler;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
//import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
//import RespBean;
//import User;
//import top.javahai.subtlechat.service.impl.UserServiceImpl;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//
///**
// * @author Hai
// * @date 2020/6/16 - 12:31
// */
////@Configuration
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//  @Autowired
//  UserServiceImpl userService;
//  @Autowired
//  VerificationCodeFilter verificationCodeFilter;
//  @Autowired
//  SimpMessagingTemplate simpMessagingTemplate;
//
//  //????????????
//  @Override
//  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//     auth.userDetailsService(userService);
//  }
//
//  //????????????
//  @Bean
//  PasswordEncoder passwordEncoder(){
//    return new BCryptPasswordEncoder();
//  }
//
//
//  //??????"/login","/verifyCode"?????????????????????????????????Security????????????
//  @Override
//  public void configure(WebSecurity web) throws Exception {
//    web.ignoring().antMatchers("/login","/verifyCode");
//  }
//  //????????????
//  @Override
//  protected void configure(HttpSecurity http) throws Exception {
//    //???????????????????????????????????????????????????????????????
//     http.addFilterBefore(verificationCodeFilter, UsernamePasswordAuthenticationFilter.class);
//     http.authorizeRequests()
//             .anyRequest().authenticated()
//             .and()
//             .formLogin()
//          .usernameParameter("username")
//          .passwordParameter("password")
//          .loginPage("/login")
//          .loginProcessingUrl("/doLogin")
//          //????????????
//          .successHandler(new AuthenticationSuccessHandler() {
//            @Override
//            public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication authentication) throws IOException, ServletException {
//              resp.setContentType("application/json;charset=utf-8");
//              PrintWriter out=resp.getWriter();
//              User user=(User) authentication.getPrincipal();
//              user.setPassword(null);
//              //???????????????????????????
//              userService.setUserStateToOn(user.getId());
//              user.setUserStateId(1);
//              //????????????????????????
//              simpMessagingTemplate.convertAndSend("/topic/notification","????????????????????????"+user.getNickname()+"?????????????????????");
//              RespBean ok = RespBean.ok("????????????", user);
//              String s = new ObjectMapper().writeValueAsString(ok);
//              out.write(s);
//              out.flush();
//              out.close();
//            }
//          })
//          //????????????
//          .failureHandler(new AuthenticationFailureHandler() {
//            @Override
//            public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse resp, AuthenticationException exception) throws IOException, ServletException {
//              resp.setContentType("application/json;charset=utf-8");
//              PrintWriter out=resp.getWriter();
//              RespBean error = RespBean.error("????????????!");
//              if (exception instanceof LockedException){
//                error.setMsg("???????????????????????????????????????");
//              }else if (exception instanceof CredentialsExpiredException){
//                error.setMsg("???????????????????????????????????????");
//              }else if (exception instanceof AccountExpiredException){
//                error.setMsg("???????????????????????????????????????");
//              }else if (exception instanceof DisabledException){
//                error.setMsg("????????????????????????????????????!");
//              }else if (exception instanceof BadCredentialsException){
//                error.setMsg("?????????????????????????????????????????????");
//              }
//              String s = new ObjectMapper().writeValueAsString(error);
//              out.write(s);
//              out.flush();
//              out.close();
//            }
//          })
//          .permitAll()//?????????????????????
//          .and()
//          //????????????
//          .logout()
//          .logoutUrl("/logout")
//          .logoutSuccessHandler(new LogoutSuccessHandler() {
//            @Override
//            public void onLogoutSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication authentication) throws IOException, ServletException {
//              //???????????????????????????
//              User user = (User) authentication.getPrincipal();
//              userService.setUserStateToLeave(user.getId());
//              //??????????????????
//              simpMessagingTemplate.convertAndSend("/topic/notification","????????????????????????"+user.getNickname()+"?????????????????????");
//              resp.setContentType("application/json;charset=utf-8");
//              PrintWriter out=resp.getWriter();
//              out.write(new ObjectMapper().writeValueAsString(RespBean.ok("???????????????")));
//              out.flush();
//              out.close();
//            }
//          })
//          .permitAll()
//          .and()
//          .csrf().disable()//??????csrf??????????????????
//           //???????????????????????????????????????????????????????????????login???
//          .exceptionHandling().authenticationEntryPoint(new AuthenticationEntryPoint() {
//             @Override
//             public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
//               httpServletResponse.setStatus(401);
//             }
//     });
//  }
//}
