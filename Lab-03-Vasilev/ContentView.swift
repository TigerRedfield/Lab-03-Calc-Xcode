//
//  ContentView.swift
//  Lab-03-Vasilev
//
//  Created by user on 29.11.2023.
//  Copyright © 2023 KITMobile. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var a: String = "0"
    @State var b: String = "0"
    @State var fnc: String = ""
    
    var body: some View {
        ZStack {
            Color("Background")
            VStack{
             Spacer()
                Text(fnc.count == 0 ? a : b).font(.system(size: 80)).frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                
                HStack(spacing: 1) {
                    Button(action:  {
                        self.a = "0"
                        self.b = "0"
                        self.fnc = ""
                        
                    })
                    {
                        ZStack{
                        Color("ButSpecial")
                            Text("AC")
                        }
                    }
                    Button(action:  {

                    })
                    {
                        ZStack{
                        Color("ButSpecial")
                            Image(systemName: "plusminus")
                        }
                    }
                    Button(action:  {
                        var x:Float = Float(self.a)!
                        var y:Float = Float(self.b)!
                        self.fnc = "%"

                        self.a = String(x / 100)
                        
                        self.b = String(x * y / 100)
                        self.b = "0"
                        self.fnc = ""
                    })
                    {
                        ZStack{
                        Color("ButSpecial")
                        Text("%")
                        }
                    }
                    Button(action:  {
                        self.fnc = "/"
                    })
                    {
                        ZStack{
                        Color("ButAct")
                            Image(systemName: "divide")
                        }
                    }
                }.frame(height: UIScreen.main.bounds.width / 4)

                HStack(spacing: 1) {
                    Button(action:  {
                        if(self.fnc.count == 0)
                        {
                          if(self.a == "0")
                          {
                            self.a = ""
                            self.a += "7"
                          }
                          else
                          {
                              self.a += "7"
                          }
                          }
                        else
                        {
                          if(self.b == "0")
                          {
                              self.b = ""
                            self.b += "7"
                          }
                          else
                          {
                              self.b += "7"
                          }
                        }
                    })
                    {
                        ZStack{
                        Color("ButDigit")
                            Text("7")
                        }
                    }
                    Button(action:  {
                      if(self.fnc.count == 0)
                       {
                          if(self.a == "0")
                          {
                            self.a = ""
                            self.a += "8"
                          }
                          else
                          {
                              self.a += "8"
                          }
                          }
                        else
                        {
                          if(self.b == "0")
                          {
                              self.b = ""
                            self.b += "8"
                          }
                          else
                          {
                              self.b += "8"
                          }
                        }
                    })
                    {
                        ZStack{
                        Color("ButDigit")
                        Text("8")
                        }
                    }
                    Button(action:  {
                          if(self.fnc.count == 0)
                      {
                            if(self.a == "0")
                            {
                              self.a = ""
                              self.a += "9"
                            }
                            else
                            {
                                self.a += "9"
                            }
                            }
                          else
                          {
                            if(self.b == "0")
                            {
                                self.b = ""
                              self.b += "9"
                            }
                            else
                            {
                                self.b += "9"
                            }
                          }
                        
                    })
                    {
                        ZStack{
                        Color("ButDigit")
                        Text("9")
                        }
                    }
                    Button(action:  {
                        self.fnc = "X"
                    })
                    {
                        ZStack{
                        Color("ButAct")
                        Image(systemName: "multiply")
                        }
                    }
                }.frame(height: UIScreen.main.bounds.width / 4)

                HStack(spacing: 1) {
                   Button(action:  {
                      if(self.fnc.count == 0)
                     {
                        if(self.a == "0")
                        {
                          self.a = ""
                          self.a += "4"
                        }
                        else
                        {
                            self.a += "4"
                        }
                        }
                      else
                      {
                        if(self.b == "0")
                        {
                            self.b = ""
                          self.b += "4"
                        }
                        else
                        {
                            self.b += "4"
                        }
                      }
                    
                   })
                   {
                       ZStack{
                       Color("ButDigit")
                       Text("4")
                       }
                   }
                   Button(action:  {
                      if(self.fnc.count == 0)
                     {
                        if(self.a == "0")
                        {
                          self.a = ""
                          self.a += "5"
                        }
                        else
                        {
                            self.a += "5"
                        }
                        }
                      else
                      {
                        if(self.b == "0")
                        {
                            self.b = ""
                          self.b += "5"
                        }
                        else
                        {
                            self.b += "5"
                        }
                      }
                    
                   })
                   {
                       ZStack{
                       Color("ButDigit")
                       Text("5")
                       }
                   }
                   Button(action:  {
                      if(self.fnc.count == 0)
                      {
                        if(self.a == "0")
                        {
                          self.a = ""
                          self.a += "6"
                        }
                        else
                        {
                            self.a += "6"
                        }
                        }
                      else
                      {
                        if(self.b == "0")
                        {
                            self.b = ""
                          self.b += "6"
                        }
                        else
                        {
                            self.b += "6"
                        }
                      }
                    
                   })
                   {
                       ZStack{
                       Color("ButDigit")
                       Text("6")
                       }
                   }
                   Button(action:  {
                    self.fnc = "-"
                   })
                   {
                       ZStack{
                       Color("ButAct")
                        Image(systemName:  "minus")
                       }
                   }
               }.frame(height: UIScreen.main.bounds.width / 4)

                 HStack(spacing: 1) {
                      Button(action:  {
                          if(self.fnc.count == 0)
                             {
                                if(self.a == "0")
                                {
                                  self.a = ""
                                  self.a += "1"
                                }
                                else
                                {
                                    self.a += "1"
                                }
                                }
                              else
                              {
                                if(self.b == "0")
                                {
                                    self.b = ""
                                  self.b += "1"
                                }
                                else
                                {
                                    self.b += "1"
                                }
                              }
                        
                      })
                      {
                          ZStack{
                          Color("ButDigit")
                          Text("1")
                          }
                      }
                      Button(action:  {
                          if(self.fnc.count == 0)
                          {
                            if(self.a == "0")
                            {
                              self.a = ""
                              self.a += "2"
                            }
                            else
                            {
                                self.a += "2"
                            }
                            }
                          else
                          {
                            if(self.b == "0")
                            {
                                self.b = ""
                              self.b += "2"
                            }
                            else
                            {
                                self.b += "2"
                            }
                          }
                        
                      })
                      {
                          ZStack{
                          Color("ButDigit")
                          Text("2")
                          }
                      }
                      Button(action:  {
                          if(self.fnc.count == 0)
                          {
                            if(self.a == "0")
                            {
                              self.a = ""
                              self.a += "3"
                            }
                            else
                            {
                                self.a += "3"
                            }
                            }
                          else
                          {
                            if(self.b == "0")
                            {
                                self.b = ""
                              self.b += "3"
                            }
                            else
                            {
                                self.b += "3"
                            }
                          }
                        
                      })
                      {
                          ZStack{
                          Color("ButDigit")
                          Text("3")
                          }
                      }
                      Button(action:  {
                        self.fnc = "+"
                      })
                      {
                          ZStack{
                          Color("ButAct")
                           Image(systemName:  "plus")
                          }
                      }
                  }.frame(height: UIScreen.main.bounds.width / 4)

         HStack(spacing: 1) {
           
                  Button(action:  {
                        if(self.fnc.count == 0)
                        {
                          if(self.a == "0")
                          {
                            self.a = ""
                            self.a += "0"
                          }
                          else
                          {
                              self.a += "0"
                          }
                          }
                        else
                        {
                          if(self.b == "0")
                          {
                              self.b = ""
                            self.b += "0"
                          }
                          else
                          {
                              self.b += "0"
                          }
                        }
                    
                  })
                  {
                      ZStack{
                      Color("ButDigit")
                      Text("0")
                      }
                  }.frame(width: UIScreen.main.bounds.width / 2 - 0.5)
                  Button(action:  {})
                  {
                      ZStack{
                      Color("ButDigit")
                      Text(".")
                      }
                  }
                  Button(action:  {
                    var x:Float = Float(self.a)!
                    var y:Float = Float(self.b)!
                    
                    if(self.fnc == "/")
                    {
                        if(self.a != "0" && self.b != "0")
                        {
                        self.a = String(x/y)
                        }
                        else
                        {
                            self.a = String("Don't Null!")
                        }
                    }
                    else if(self.fnc == "X")
                    {
                        self.a = String(x*y)
                    }
                    else if(self.fnc == "-")
                    {
                        self.a = String(x-y)
                    }
                    else if (self.fnc == "+")
                    {
                        self.a = String(x+y)
                    }

                    self.b = "0"
                    self.fnc = ""
                  })
                  {
                      ZStack{
                      Color("ButAct")
                       Image(systemName:  "equal")
                      }
                  }
         }.frame(height: UIScreen.main.bounds.width / 4)
                }.foregroundColor(.white).font(.system(size: 25))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
