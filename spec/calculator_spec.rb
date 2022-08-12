describe Calculator do
    context "can add" do
        it "can add positive integers" do
            expect(subject.add(5,6)).to eq(11)
            expect(subject.add(3,4)).to eq(7)
        end
        # add negative integers
        # handles floats
    end

    context "can multiply" do
        it "can multiply positive integers" do
            expect(subject.multiply(2,1)).to eq(2)
            expect(subject.multiply(10,2)).to eq(20)
            expect(subject.multiply(8,7)).to eq(56)
        end
    end

    context "can divide" do
        it "can divide positive integers" do
            expect(subject.divide(10,2)).to eq(5)
            expect(subject.divide(15,5)).to eq(3)
        end
        it "will raise ZeroDivision error if dividing by 0" do
            expect {subject.divide(6,0)}.to raise_error(ZeroDivisionError, "divided by 0")
        end
    end
end