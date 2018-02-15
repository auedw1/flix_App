//
//  SuperherodetailViewController.swift
//  FlixApp
//
//  Created by Humberto Henriquez on 2/14/18.
//  Copyright © 2018 Austin Edwards. All rights reserved.
//

import UIKit

enum SuperMovieKeys {
    static let title = "title"
    static let releaseDate = "release_date"
    static let overviewStatic = "overview"
    static let backdropPath = "backdrop_path"
    static let posterPath = "poster_path"
}

class SuperherodetailViewController: UIViewController {

    @IBOutlet weak var BackDropImageView: UIImageView!
    @IBOutlet weak var PosterImageView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var ReleaseDateLabel: UILabel!
    @IBOutlet weak var OverviewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let movie = movie {
            TitleLabel.text = movie[SuperMovieKeys.title] as? String
            ReleaseDateLabel.text = movie[SuperMovieKeys.releaseDate] as? String
            OverviewLabel.text = movie[SuperMovieKeys.overviewStatic] as? String
            let backdropPathString = movie[SuperMovieKeys.backdropPath] as! String
            let posterPathString = movie[SuperMovieKeys.posterPath] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            
            let backDropURL = URL(string: baseURLString + backdropPathString)!
            BackDropImageView.af_setImage(withURL: backDropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            PosterImageView.af_setImage(withURL: posterPathURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
