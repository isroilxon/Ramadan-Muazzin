import UIKit

class OylikView: UIView {
    let tableBack = UIView()
    let tablview2 = UITableView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backTable()
        tableviev()
        
        
    }
    func backTable(){
        self.addSubview(tableBack)
        tableBack.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-10)
        }
        tableBack.layer.cornerRadius = 15
        tableBack.clipsToBounds = true
    }
    
    func tableviev() {
        
        tableBack.addSubview(tablview2)
        tablview2.snp.makeConstraints { make in
            make.top.left.bottom.right.equalToSuperview()
        }
        tablview2.delegate = self
        tablview2.dataSource = self
        tablview2.register(OylikTableViewCell.self, forCellReuseIdentifier: "cell")
        

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
extension OylikView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OylikTableViewCell
        cell.backgroundColor = .red
        return cell
    }
    
    
}
