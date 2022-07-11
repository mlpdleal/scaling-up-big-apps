//
//  ContentView.swift
//  iExpense
//
//  Created by Manoel Leal on 01/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
 

    var body: some View {
        
        NavigationView{
            List{
        
                Section{
                    ForEach(expenses.items.filter{ $0.type == "Personal"} ){ item in
                        HStack{
                            VStack(alignment: .leading){
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel(item.name)
                            .accessibilityHint(item.type)
                            
                            Spacer()
                            if item.amount <= 10 {
                                Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))               .foregroundColor(.yellow)
                            
                            } else if item.amount > 10 && item.amount < 100 {
                                Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))               .foregroundColor(.orange)
                                    .bold()
                            } else {
                                Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))               .foregroundColor(.red)
                                    .bold()
                            }
                            
                        }
                            
                      }
                    .onDelete(perform: removeItems)
                } header: {
                    HStack{
                        Image(systemName: "person")
                        Text("Personal")
                    }
                }
                
                Section{
                    ForEach(expenses.items.filter{ $0.type == "Business"} ){ item in
                        HStack{
                            VStack(alignment: .leading){
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            Spacer()
                            if item.amount <= 10 {
                                Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))               .foregroundColor(.yellow)
                            
                            } else if item.amount > 10 && item.amount < 100 {
                                Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))               .foregroundColor(.orange)
                                    .bold()
                            } else {
                                Text(item.amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))               .foregroundColor(.red)
                                    .bold()
                            }
                            
                        }
                            
                      }
                    .onDelete(perform: removeItems)
                } header: {
                    HStack{
                        Image(systemName: "briefcase")
                        Text("Business")
                    }
                }

                
                }
            .navigationTitle("iExpense")
            .toolbar{
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense){
                AddView(expenses: expenses)
                }
            
            }
        }
    
    
    func removeItems(at offsets: IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
