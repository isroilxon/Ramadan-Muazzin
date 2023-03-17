import UIKit
import SnapKit

class MainViewController: UIViewController {
    let leftImg = UIImageView()
    let rightImg = UIImageView()
    let topView = UIView()
    let kunlik = UIButton()
    let oylik = UIButton()
    let halfView = UIView()
    var halfViewLeft: NSLayoutConstraint?
    let kunlikview = KunlikView()
    let oylikView = OylikView()
    let arr: [Category] = [
        Category(name: "yangi duo o'rganish", img: "house"),
        Category(name: "bemorlardan habar olish", img: "plus"),
        Category(name: "yangi duo o'rganish", img: "house"),
        Category(name: "bemorlardan habar olish", img: "plus")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        
        //        let url = "https://api.weatherapi.com/v1/current.json?key=9032f31c4823421792253946230302&q=Tashkent&aqi=no"
        //        getData(url: url)
        
        topPart()
        
        view.addSubview(kunlikview)
        kunlikview.snp.makeConstraints { make in
            make.top.equalTo(topView.snp_bottomMargin).offset(30)
            make.left.right.bottom.equalToSuperview()
        }
        kunlikview.tablview.delegate = self
        kunlikview.tablview.dataSource = self
        kunlikview.tablview.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        kunlikview.tablview.separatorStyle = .none
        
        view.addSubview(oylikView)
        oylik.snp.makeConstraints { make in
            make.top.equalTo(topView.snp_bottomMargin).offset(30)
            make.left.right.bottom.equalToSuperview()
        }
        
        
    }
    func topPart(){
        
        view.addSubview(leftImg)
        leftImg.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(70)
            make.width.height.equalTo(25)
        }
        leftImg.image = UIImage(systemName: "arrow.left")
        leftImg.tintColor = .black
        
        view.addSubview(rightImg)
        rightImg.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(70)
            make.width.height.equalTo(25)
        }
        rightImg.image = UIImage(systemName: "gearshape")
        rightImg.tintColor = .black
        
        view.addSubview(topView)
        topView.backgroundColor =  .systemGray6
        topView.layer.cornerRadius = 12
        topView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.centerX.equalToSuperview()
            make.height.equalTo(35)
            make.width.equalTo(200)
        }
        
        topView.addSubview(halfView)
        halfView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.width.equalTo(100)
            
        }
        halfViewLeft = halfView.leftAnchor.constraint(equalTo: topView.leftAnchor)
        halfViewLeft?.isActive = true
        halfView.backgroundColor = .green
        halfView.layer.cornerRadius = 12
        
        topView.addSubview(kunlik)
        kunlik.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.right.equalTo(topView.snp_centerXWithinMargins)
        }
        kunlik.setTitle("Kunlik", for: .normal)
        kunlik.addTarget(self, action: #selector(kunButton), for: .touchUpInside)
        kunlik.setTitleColor(.gray, for: .normal)
        kunlik.layer.cornerRadius = 12
        
        topView.addSubview(oylik)
        oylik.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview()
            make.left.equalTo(topView.snp_centerXWithinMargins)
            
        }
        oylik.setTitle("Oylik", for: .normal)
        oylik.setTitleColor(.gray, for: .normal)
        oylik.layer.cornerRadius = 12
        oylik.addTarget(self, action: #selector(oyButton), for: .touchUpInside)
        
    }
    
    
    
    @objc func kunButton(){
        kunlikview.isHidden = false
        oylikView.isHidden = true
        UIView.animate(withDuration: 0.3, delay: 0) {
            self.halfViewLeft?.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func oyButton(){
        kunlikview.isHidden = true
        oylikView.isHidden = false
        UIView.animate(withDuration: 0.3, delay: 0) {
            self.halfViewLeft?.constant = 100
            self.view.layoutIfNeeded()
        }        }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = arr[indexPath.row].name
        cell.img1.image = UIImage(systemName: arr[indexPath.row].img)
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        return cell
    }
}







