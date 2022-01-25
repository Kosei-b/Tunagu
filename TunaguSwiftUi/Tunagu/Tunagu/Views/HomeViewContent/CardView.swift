//
//  CardView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-21.
//

import SwiftUI

struct CardView: View {

        @State var translation: CGSize = .zero
       
        var body: some View {
            
          
            GeometryReader { geometry in
                
                ZStack{
                    ZStack{
                        
                        Color.white
                        
                        VStack{
                            
                            HStack{
                                
                                Image("Com_image")
                                    .resizable()
                                    .cornerRadius(100)
                                    .frame(width: 150, height: 150, alignment: .center)
                                    .scaledToFill()
                                    
                                
                                VStack{
                                    
                                   Text("IOS Developper")
                                        .foregroundColor(.black)
                                        .font(.system(size: 20, weight: .bold))
                                        .padding()
                                
                                    Text("Vancouver")
                                         .foregroundColor(.black)
                                         .font(.system(size: 20, weight: .bold))
                                         .padding()

                                }
                               
                            }
                            .frame(width: geometry.size.width - 20)
                            .background(Color.white)
                            
                            
                            Text("Ben / VanDev.Co")
                                .font(.system(size: 40, weight: .heavy))
                                .frame(width: geometry.size.width - 20,alignment: .leading)
                                .padding(.leading,40)
                                .background(Color.white)
                            
                            ScrollView{
                                       Text("APPLICATION DEVELOPERRoles & Responsibilities:\n)Analyze information and evaluate results to choose the best solution to effectively solve problems.Apply knowledge gained in computer science courses to real world problems.Develop applications in Java.Understand the requirement and design test cases with test coverage.Build proficiency with test engineering tools.Perform test design, construct test scenarios.Participate in project meetings when required.Record, report, and track defects to accurately depict the status of the system.Complete all test documentation.Apply principles and techniques to evaluate systems during the development lifecycle.Apply strategies and approaches to identify risks with implementation, assess their likelihood, and initiate strategies to test for those risks.Test all code developed as per the defined quality process standards.Work closely with experienced developers, UX designers, and business and systems analysts as part of a larger development team.Ensure developed code is in accordance with time, quality and cost standards.Provide support in specialized technology areas such as requirements/specifications definition, analysis, assessment, planning, design, development, integration, testing, installation, performance tuning, deployment and/or maintenance.Design, develop, test, deploy, maintain and improve software.Technologies: Java OR Javascript OR, Python OR, .Net").padding()
                                   }
                           
                            
                            HStack{
                                
                                Text("21:44・2022/01/09")
                                    .foregroundColor(.black)
                                    .frame(alignment: .leading)
                                    .padding(.leading,10)
                            
                                
                                Spacer()
                                
                                HStack{
                                    
                                    Button(action: {
                                    
                                    }, label: {
                                        Image(systemName: "bubble.left")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 40, height: 40, alignment: .center)
                                            .foregroundColor(.black)
                                            
                                    })
                                        .frame(width: 20)
                                        .padding()
                                    
                                    
                                    Button(action: {
                                    
                                    }, label: {
                                        Image(systemName: "star")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 40, height: 40, alignment: .center)
                                            .foregroundColor(.black)
                                    })
                                        .frame(width: 20)
                                        .padding()
                                
                                }
                              
                                
                            }
                            .padding()
                            .frame(width: geometry.size.width - 20,height: 30)
                            
                            
                        }
                        .padding()
                        .frame(width: geometry.size.width - 20, height: geometry.size.height)
                        
                        
                        
                    }
                    .frame(width: geometry.size.width - 20, height: geometry.size.height)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .padding(.all,10)
                    
                }
                .offset(translation)
                .rotationEffect(.degrees(Double(self.translation.width / 300 * 20)))
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.translation = value.translation
                            print("value" ,value.location)
                        })
                        .onEnded({ value in
                            if value.startLocation.x + 200 < value.location.x{
                                // fadeout to right
                                self.translation = .init(width: 800, height: 0)
                            
                            }else{
                                // Back to start Location
                                self.translation = .zero
                                
                                
                            }
                        })
                )
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 1))
                
               
            }
            .padding(.bottom,20)
            
            }
            
    }
        


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
