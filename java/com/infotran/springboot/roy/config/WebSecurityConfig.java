//package com.infotran.springboot.roy.config;
// 
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
// 
////@Configuration
//public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
// 
////   @Autowired
////   UserDetailsServiceImpl userDetailsService;
// 
////   @Bean
//   public BCryptPasswordEncoder passwordEncoder() {
//      BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//      return bCryptPasswordEncoder;
//   }
// 
////   @Autowired
//   public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
// 
//      // Setting Service to find User in the database.
//      // And Setting PassswordEncoder
////      auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
// 
//   }
// 
////   @Override
//   protected void configure(HttpSecurity http) throws Exception {
//	   System.out.println("到了Spring Security");
//      http.csrf().disable();
////      那些網頁需要被確認
//      http.authorizeRequests().antMatchers("/admin/orderList", "/admin/order", "/admin/accountInfo")//
//            .access("hasAnyRole('ROLE_EMPLOYEE', 'ROLE_MANAGER')");
//      
// 
//      // Pages only for MANAGER
//      http.authorizeRequests().antMatchers("/admin/product").access("hasRole('ROLE_MANAGER')");
// 
//      // When user login, role XX.
//      // But access to the page requires the YY role,
//      // An AccessDeniedException will be thrown.
//      http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
// 
//      // Configuration for Login Form.
//      http.authorizeRequests().and().formLogin()//自定義自己編寫的登錄頁面
//            .loginProcessingUrl("/member/login") //登入訪問路徑 
//            .loginPage("/member/login")//登入頁面
//            .defaultSuccessUrl("/ffgdfg")//登入成功後頁面
////            .defaultSuccessUrl("/ffgdfg").permitAll()//登入成功後頁面
//            .failureUrl("/member/login")//登入失敗後跳轉路徑
//            .usernameParameter("userName")//
//            .passwordParameter("password")
//            .and().authorizeRequests().antMatchers("roy/test").permitAll()//那些路徑不需要被管控
// 
//            // Configuration for the Logout page.
//            // (After logout, go to home page)
//            .and().logout().logoutUrl("/admin/logout").logoutSuccessUrl("/");
// 
//   }
//}