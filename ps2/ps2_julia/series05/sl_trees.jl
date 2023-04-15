# load packages
using DecisionTree

using Random, Statistics

# load data
X, y = load_data("iris")

# view data types
X

y

# cast data types

X = float.(X)

y = string.(y)

iris = [X y]

vscodedisplay(iris)
# note = no header row
# rows 1-4 measurements
# row 5 label

# define function to split data (source: Huda Nassar)

function perclass_splits(y, percent)
    uniq_class  = unique(y)
    keep_index = []
    for class in uniq_class
        class_index = findall(y .== class)
        row_index = randsubseq(class_index, percent)
        push!(keep_index, row_index...)
    end
    return keep_index
end

# split data between train and test

Random.seed!(1)

train_index = perclass_splits(y,0.67)

test_index = setdiff(1:length(y), train_index)

# split features

X_train = X[train_index, :]
X_test = X[test_index, :]

# split classes 

y_train = y[train_index]

y_test = y[test_index]

################
# DecisionTree
################

# run model

model = DecisionTreeClassifier(max_depth = 2)

fit!(model, X_train, y_train)

# print tree 

print_tree(model)

# view training data

vscodedisplay([X_train y_train])

# make predicitons 

y_hat = predict(model, X_test)

# check accuracy 

accuracy = mean(y_hat .== y_test)

# display confusion matrix

confusion_matrix(y_test, y_hat)



























